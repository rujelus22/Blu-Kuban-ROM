.class Lcom/actionbarsherlock/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# static fields
.field private static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field private static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final SERIAL_EXECUTOR:Lcom/actionbarsherlock/widget/ActivityChooserModel$SerialExecutor; = null

.field private static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field private static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/actionbarsherlock/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Lcom/actionbarsherlock/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivitySorter;

.field private mCanReadHistoricalData:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field private final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private mReadShareHistoryCalled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 163
    const-class v0, Lcom/actionbarsherlock/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    sput-object v0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    .line 565
    new-instance v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel$SerialExecutor;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserModel$SerialExecutor;)V

    sput-object v0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->SERIAL_EXECUTOR:Lcom/actionbarsherlock/widget/ActivityChooserModel$SerialExecutor;

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 353
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 235
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 265
    new-instance v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$DefaultSorter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel$DefaultSorter;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;Lcom/actionbarsherlock/widget/ActivityChooserModel$DefaultSorter;)V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivitySorter:Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivitySorter;

    .line 270
    const/16 v0, 0x32

    iput v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 280
    iput-boolean v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 299
    iput-boolean v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 304
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHandler:Landroid/os/Handler;

    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    .line 355
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 356
    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 361
    :goto_5c
    return-void

    .line 359
    :cond_5d
    iput-object p2, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_5c
.end method

.method static synthetic access$0(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/actionbarsherlock/widget/ActivityChooserModel;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    return-void
.end method

.method static synthetic access$5(Lcom/actionbarsherlock/widget/ActivityChooserModel;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V
    .registers 1
    .parameter

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    return-void
.end method

.method static synthetic access$7(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V
    .registers 1
    .parameter

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->sortActivities()V

    return-void
.end method

.method static synthetic access$8()Ljava/lang/String;
    .registers 1

    .prologue
    .line 163
    sget-object v0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addHisoricalRecord(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;)Z
    .registers 5
    .parameter

    .prologue
    .line 704
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 705
    :try_start_3
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 706
    if-eqz v0, :cond_17

    .line 707
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 708
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    .line 709
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->persistHistoricalData()V

    .line 710
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->sortActivities()V

    .line 712
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    return v0

    .line 704
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/actionbarsherlock/widget/ActivityChooserModel;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 336
    sget-object v1, Lcom/actionbarsherlock/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_3
    sget-object v0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ActivityChooserModel;

    .line 338
    if-nez v0, :cond_17

    .line 339
    new-instance v0, Lcom/actionbarsherlock/widget/ActivityChooserModel;

    invoke-direct {v0, p0, p1}, Lcom/actionbarsherlock/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    sget-object v2, Lcom/actionbarsherlock/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_17
    invoke-direct {v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->readHistoricalData()V

    .line 343
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1c

    return-object v0

    .line 336
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadActivitiesLocked()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 738
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 739
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_35

    .line 741
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 742
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    .line 743
    :goto_1b
    if-lt v1, v3, :cond_21

    .line 747
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->sortActivities()V

    .line 751
    :goto_20
    return-void

    .line 744
    :cond_21
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 745
    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    new-instance v5, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v5, p0, v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    .line 749
    :cond_35
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->notifyChanged()V

    goto :goto_20
.end method

.method private persistHistoricalData()V
    .registers 5

    .prologue
    .line 603
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    :try_start_3
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v0, :cond_12

    .line 605
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 603
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 607
    :cond_12
    :try_start_12
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_18

    .line 608
    monitor-exit v1

    :goto_17
    return-void

    .line 610
    :cond_18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 612
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 613
    sget-object v0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->SERIAL_EXECUTOR:Lcom/actionbarsherlock/widget/ActivityChooserModel$SerialExecutor;

    new-instance v2, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryPersister;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryPersister;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryPersister;)V

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/ActivityChooserModel$SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 603
    :cond_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_f

    goto :goto_17
.end method

.method private pruneExcessiveHistoricalRecordsLocked()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 720
    iget-object v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 721
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryMaxSize:I

    sub-int v3, v0, v3

    .line 722
    if-gtz v3, :cond_e

    .line 732
    :cond_d
    return-void

    .line 725
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    move v0, v1

    .line 726
    :goto_12
    if-ge v0, v3, :cond_d

    .line 727
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method private readHistoricalData()V
    .registers 5

    .prologue
    .line 553
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_3
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_d

    .line 555
    :cond_b
    monitor-exit v1

    :goto_c
    return-void

    .line 557
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 559
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 560
    sget-object v0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->SERIAL_EXECUTOR:Lcom/actionbarsherlock/widget/ActivityChooserModel$SerialExecutor;

    new-instance v2, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserModel;Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoryLoader;)V

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/ActivityChooserModel$SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 553
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_28

    goto :goto_c

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sortActivities()V
    .registers 6

    .prologue
    .line 642
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_3
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivitySorter:Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 644
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivitySorter:Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivitySorter;

    iget-object v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    .line 645
    iget-object v4, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 644
    invoke-interface {v0, v2, v3, v4}, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 646
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->notifyChanged()V

    .line 642
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .registers 8
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 459
    new-instance v1, Landroid/content/ComponentName;

    .line 460
    iget-object v2, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 461
    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 459
    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 464
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 466
    iget-object v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Lcom/actionbarsherlock/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v2, :cond_36

    .line 468
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 469
    iget-object v3, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Lcom/actionbarsherlock/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v3, p0, v2}, Lcom/actionbarsherlock/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Lcom/actionbarsherlock/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v2

    .line 471
    if-eqz v2, :cond_36

    .line 472
    const/4 v0, 0x0

    .line 480
    :goto_35
    return-object v0

    .line 476
    :cond_36
    new-instance v2, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/high16 v5, 0x3f80

    .line 476
    invoke-direct {v2, v1, v3, v4, v5}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 478
    invoke-direct {p0, v2}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->addHisoricalRecord(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;)Z

    goto :goto_35
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .registers 4
    .parameter

    .prologue
    .line 415
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_3
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    return-object v0

    .line 415
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getActivityCount()I
    .registers 3

    .prologue
    .line 401
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_3
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return v0

    .line 401
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .registers 6
    .parameter

    .prologue
    .line 428
    iget-object v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    .line 429
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 430
    const/4 v1, 0x0

    :goto_7
    if-lt v1, v3, :cond_b

    .line 436
    const/4 v0, -0x1

    :goto_a
    return v0

    .line 431
    :cond_b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 432
    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v0, p1, :cond_17

    move v0, v1

    .line 433
    goto :goto_a

    .line 430
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .registers 4

    .prologue
    .line 502
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 503
    :try_start_3
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 504
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    .line 507
    :goto_17
    return-object v0

    .line 502
    :cond_18
    monitor-exit v1

    .line 507
    const/4 v0, 0x0

    goto :goto_17

    .line 502
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getHistoryMaxSize()I
    .registers 3

    .prologue
    .line 681
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 682
    :try_start_3
    iget v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryMaxSize:I

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v0

    .line 681
    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getHistorySize()I
    .registers 3

    .prologue
    .line 692
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 693
    :try_start_3
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return v0

    .line 692
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 388
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_3
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return-object v0

    .line 388
    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setActivitySorter(Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivitySorter;)V
    .registers 4
    .parameter

    .prologue
    .line 626
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 627
    :try_start_3
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivitySorter:Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivitySorter;

    if-ne v0, p1, :cond_9

    .line 628
    monitor-exit v1

    :goto_8
    return-void

    .line 630
    :cond_9
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivitySorter:Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivitySorter;

    .line 631
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->sortActivities()V

    .line 626
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDefaultActivity(I)V
    .registers 7
    .parameter

    .prologue
    .line 521
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 522
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivites:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 525
    if-eqz v1, :cond_39

    .line 527
    iget v1, v1, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v2, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v1, v2

    .line 528
    const/high16 v2, 0x40a0

    .line 527
    add-float/2addr v1, v2

    .line 533
    :goto_1b
    new-instance v2, Landroid/content/ComponentName;

    .line 534
    iget-object v3, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 535
    iget-object v0, v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 533
    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance v0, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;

    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 536
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 538
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->addHisoricalRecord(Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 539
    return-void

    .line 530
    :cond_39
    const/high16 v1, 0x3f80

    goto :goto_1b
.end method

.method public setHistoryMaxSize(I)V
    .registers 4
    .parameter

    .prologue
    .line 665
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 666
    :try_start_3
    iget v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryMaxSize:I

    if-ne v0, p1, :cond_9

    .line 667
    monitor-exit v1

    :goto_8
    return-void

    .line 669
    :cond_9
    iput p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 670
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsLocked()V

    .line 671
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->sortActivities()V

    .line 665
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    goto :goto_8

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 373
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 374
    :try_start_3
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-ne v0, p1, :cond_9

    .line 375
    monitor-exit v1

    :goto_8
    return-void

    .line 377
    :cond_9
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 378
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->loadActivitiesLocked()V

    .line 373
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setOnChooseActivityListener(Lcom/actionbarsherlock/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .registers 2
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Lcom/actionbarsherlock/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 490
    return-void
.end method
