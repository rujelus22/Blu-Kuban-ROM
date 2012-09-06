.class public Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyAppsInstalledAdapter.java"

# interfaces
.implements Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;,
        Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;
    }
.end annotation


# static fields
.field private static final sDocumentAbcCollator:Ljava/text/Collator;

.field private static final sDocumentAbcSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/adapters/AggregatedAdapter",
            "<",
            "Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

.field protected mContext:Landroid/content/Context;

.field private final mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

.field private final mHasDocumentView:Z

.field private final mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

.field private final mInstalledSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field protected final mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mListView:Landroid/widget/ListView;

.field private final mManualUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mUnsortedDocuments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcCollator:Ljava/text/Collator;

    .line 82
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcSorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/view/View$OnClickListener;ZLcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;)V
    .registers 14
    .parameter "context"
    .parameter "installer"
    .parameter "installThresholds"
    .parameter "appStates"
    .parameter "bitmapLoader"
    .parameter "onClickListener"
    .parameter "hasDocumentView"
    .parameter "bucketsChangedListener"

    .prologue
    const/4 v4, 0x0

    .line 311
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    .line 312
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    .line 313
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 314
    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    .line 315
    iput-object p4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 316
    iput-object p6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 317
    iput-object p5, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 319
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 321
    iput-boolean p7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mHasDocumentView:Z

    .line 323
    iput-object p8, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

    .line 325
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->DOWNLOADING:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const v2, 0x7f0700e6

    sget-object v3, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->STOP_ALL_DOWNLOADS:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    .line 327
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->UPDATE_AVAILABLE:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const v2, 0x7f0700e7

    sget-object v3, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->UPDATE_ALL:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    .line 329
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->UPDATE_AVAILABLE:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const v2, 0x7f0700e8

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mManualUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    .line 331
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    sget-object v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;->INSTALLED:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;

    const v2, 0x7f0700ea

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;ILcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstalledSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    .line 334
    new-instance v0, Lcom/google/android/finsky/adapters/AggregatedAdapter;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mManualUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstalledSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    .line 338
    return-void
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Comparator;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->sDocumentAbcSorter:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getDownloadingDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/receivers/Installer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    return-object v0
.end method

.method private getDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentState;Z)Landroid/view/View;
    .registers 11
    .parameter "doc"
    .parameter "convertView"
    .parameter "parent"
    .parameter "documentState"
    .parameter "isLastInSection"

    .prologue
    const/4 v4, 0x0

    .line 392
    if-nez p2, :cond_10

    .line 393
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mHasDocumentView:Z

    if-eqz v2, :cond_33

    const v2, 0x7f040060

    :goto_c
    invoke-virtual {v3, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_10
    move-object v0, p2

    .line 397
    check-cast v0, Lcom/google/android/finsky/layout/OverviewBucketEntry;

    .line 398
    .local v0, entry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setRightSeparatorVisibility(Z)V

    .line 399
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v0, v2, p1, p5}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Z)V

    .line 400
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;

    .line 405
    .local v1, holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;
    if-nez v1, :cond_2d

    .line 406
    new-instance v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;

    .end local v1           #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;
    invoke-direct {v1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 408
    .restart local v1       #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;
    :cond_2d
    iput-object p1, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;->doc:Lcom/google/android/finsky/api/model/Document;

    .line 409
    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/OverviewBucketEntry;->setTag(Ljava/lang/Object;)V

    .line 411
    return-object p2

    .line 393
    .end local v0           #entry:Lcom/google/android/finsky/layout/OverviewBucketEntry;
    .end local v1           #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;
    :cond_33
    const v2, 0x7f04007f

    goto :goto_c
.end method

.method private getDownloadingDocView(Lcom/google/android/finsky/api/model/Document;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "doc"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 418
    if-nez p2, :cond_d

    .line 419
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040063

    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 423
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;

    .line 425
    .local v1, holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;
    if-nez v1, :cond_1a

    .line 426
    new-instance v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;

    .end local v1           #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;
    invoke-direct {v1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;-><init>(Landroid/view/View;)V

    .line 429
    .restart local v1       #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;
    :cond_1a
    iput-object p1, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->doc:Lcom/google/android/finsky/api/model/Document;

    .line 430
    iget-object v3, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v3, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->author:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v3, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->thumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v3, p1, v4}, Lcom/google/android/finsky/layout/SmartThumbnailView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 435
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/finsky/receivers/Installer;->getProgress(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;

    move-result-object v2

    .line 437
    .local v2, progress:Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->downloadingBytes:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->downloadingPercentage:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DownloadingViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v3, v2, v4, v5, v6}, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->configureDownloadProgressUi(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer$InstallerProgressReport;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    .line 440
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    invoke-static {v8}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentLongDescriptionResource(I)I

    move-result v0

    .line 445
    .local v0, descriptionStringId:I
    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f07019c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 448
    return-object p2
.end method

.method private getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;
    .registers 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "sectionAdapter"

    .prologue
    .line 453
    if-nez p2, :cond_c

    .line 454
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400a1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 457
    :cond_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;

    .line 459
    .local v0, holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;
    if-nez v0, :cond_19

    .line 460
    new-instance v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;

    .end local v0           #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;
    invoke-direct {v0, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;-><init>(Landroid/view/View;)V

    .line 463
    .restart local v0       #holder:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;
    :cond_19
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->titleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderTextId:I
    invoke-static/range {p4 .. p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->access$1100(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 467
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->loadingProgress:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->divider:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 470
    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->mHeaderAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
    invoke-static/range {p4 .. p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->access$1200(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    move-result-object v5

    .line 471
    .local v5, sectionAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;
    if-eqz v5, :cond_7a

    invoke-virtual {v5, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->isVisible(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z

    move-result v6

    if-eqz v6, :cond_7a

    const/4 v2, 0x1

    .line 472
    .local v2, isActionVisible:Z
    :goto_4a
    if-eqz v5, :cond_7c

    invoke-virtual {v5, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->isWaiting(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)Z

    move-result v6

    if-eqz v6, :cond_7c

    const/4 v3, 0x1

    .line 474
    .local v3, isActionWaiting:Z
    :goto_53
    if-eqz v3, :cond_7e

    .line 475
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->loadingProgress:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 491
    :cond_5b
    :goto_5b
    if-nez v3, :cond_5f

    if-nez v2, :cond_c4

    :cond_5f
    const/4 v4, 0x1

    .line 492
    .local v4, isCountVisible:Z
    :goto_60
    iget-object v7, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->countView:Landroid/widget/TextView;

    if-eqz v4, :cond_c6

    const/4 v6, 0x0

    :goto_65
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    if-eqz v4, :cond_79

    .line 494
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->countView:Landroid/widget/TextView;

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    :cond_79
    return-object p2

    .line 471
    .end local v2           #isActionVisible:Z
    .end local v3           #isActionWaiting:Z
    .end local v4           #isCountVisible:Z
    :cond_7a
    const/4 v2, 0x0

    goto :goto_4a

    .line 472
    .restart local v2       #isActionVisible:Z
    :cond_7c
    const/4 v3, 0x0

    goto :goto_53

    .line 476
    .restart local v3       #isActionWaiting:Z
    :cond_7e
    if-eqz v2, :cond_5b

    .line 477
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->divider:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 479
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->getLabelId()I

    move-result v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    new-instance v7, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$2;

    invoke-direct {v7, p0, v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$2;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 488
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v6, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v1, v7, v8, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5b

    .line 491
    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    :cond_c4
    const/4 v4, 0x0

    goto :goto_60

    .line 492
    .restart local v4       #isCountVisible:Z
    :cond_c6
    const/16 v6, 0x8

    goto :goto_65
.end method

.method public static getViewDoc(Landroid/view/View;)Lcom/google/android/finsky/api/model/Document;
    .registers 3
    .parameter "v"

    .prologue
    .line 589
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 590
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;

    if-eqz v1, :cond_d

    .line 591
    check-cast v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;

    .end local v0           #tag:Ljava/lang/Object;
    iget-object v1, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BaseViewHolder;->doc:Lcom/google/android/finsky/api/model/Document;

    .line 593
    :goto_c
    return-object v1

    .restart local v0       #tag:Ljava/lang/Object;
    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private putDocsInBuckets()V
    .registers 18

    .prologue
    .line 526
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v15}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getAdapters()[Landroid/widget/BaseAdapter;

    move-result-object v2

    check-cast v2, [Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    .line 527
    .local v2, adapters:[Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    move-object v4, v2

    .local v4, arr$:[Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    array-length v11, v4

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_d
    if-ge v9, v11, :cond_17

    aget-object v1, v4, v9

    .line 528
    .local v1, adapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->clearDocs()V

    .line 527
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 531
    .end local v1           #adapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    :cond_17
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 532
    .local v14, skipped:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/api/model/Document;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v7, docsWithUpdates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/api/model/Document;

    .line 535
    .local v5, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    .line 536
    .local v3, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 538
    .local v12, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v15}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v15

    invoke-interface {v15, v12}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v13

    .line 539
    .local v13, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v15, v12}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v10

    .line 540
    .local v10, installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;
    invoke-virtual {v10}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->isDownloadingOrInstalling()Z

    move-result v15

    if-eqz v15, :cond_5e

    .line 542
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mDownloadingSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    invoke-virtual {v15, v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->addDoc(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_28

    .line 543
    :cond_5e
    if-eqz v13, :cond_64

    iget-boolean v15, v13, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isDisabled:Z

    if-eqz v15, :cond_68

    .line 545
    :cond_64
    invoke-interface {v14, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 546
    :cond_68
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    invoke-virtual {v15, v13, v5}, Lcom/google/android/finsky/installer/InstallPolicies;->canUpdateApp(Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v15

    if-eqz v15, :cond_76

    .line 548
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 551
    :cond_76
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstalledSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    invoke-virtual {v15, v5}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->addDoc(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_28

    .line 557
    .end local v3           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .end local v5           #doc:Lcom/google/android/finsky/api/model/Document;
    .end local v10           #installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;
    .end local v12           #packageName:Ljava/lang/String;
    .end local v13           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    :cond_7e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mInstallPolicies:Lcom/google/android/finsky/installer/InstallPolicies;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v7, v0}, Lcom/google/android/finsky/installer/InstallPolicies;->getApplicationsEligibleForAutoUpdate(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    .line 559
    .local v8, eligibleForBulkUpdate:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/api/model/Document;

    .line 560
    .local v6, docWithUpdate:Lcom/google/android/finsky/api/model/Document;
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a8

    .line 561
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    invoke-virtual {v15, v6}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->addDoc(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_8e

    .line 563
    :cond_a8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mManualUpdatesSectionAdapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;

    invoke-virtual {v15, v6}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->addDoc(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_8e

    .line 569
    .end local v6           #docWithUpdate:Lcom/google/android/finsky/api/model/Document;
    :cond_b0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 571
    move-object v4, v2

    array-length v11, v4

    const/4 v9, 0x0

    .local v9, i$:I
    :goto_ba
    if-ge v9, v11, :cond_c7

    aget-object v1, v4, v9

    .line 573
    .restart local v1       #adapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->sortDocs()V

    .line 576
    invoke-virtual {v1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;->notifyDataSetChanged()V

    .line 571
    add-int/lit8 v9, v9, 0x1

    goto :goto_ba

    .line 578
    .end local v1           #adapter:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;
    :cond_c7
    return-void
.end method


# virtual methods
.method public addDocs(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, docs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/api/model/Document;>;"
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 502
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mUnsortedDocuments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 503
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->notifyDataSetChanged()V

    .line 504
    return-void
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDocument(I)Lcom/google/android/finsky/api/model/Document;
    .registers 3
    .parameter "position"

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 342
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 374
    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mListView:Landroid/widget/ListView;

    .line 376
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 352
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mAggregatedAdapter:Lcom/google/android/finsky/adapters/AggregatedAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/adapters/AggregatedAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->putDocsInBuckets()V

    .line 509
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 510
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

    if-eqz v0, :cond_f

    .line 511
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mBucketsChangedListener:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;

    invoke-interface {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$BucketsChangedListener;->bucketsChanged()V

    .line 513
    :cond_f
    return-void
.end method
