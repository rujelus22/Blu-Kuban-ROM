.class public Lcom/sec/android/app/myfiles/activity/DetailsActivity;
.super Landroid/app/Activity;
.source "DetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;,
        Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsListAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOCALE:Ljava/util/Locale;


# instance fields
.field private fileCount:I

.field private folderCount:I

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mFile:Ljava/io/File;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLoadingHandler:Landroid/os/Handler;

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSize:Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field private mTime:Ljava/lang/String;

.field private mbCanceled:Z

.field showingDialog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 59
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->DEFAULT_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-object p0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mContext:Landroid/content/Context;

    .line 71
    iput v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->fileCount:I

    .line 72
    iput v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->folderCount:I

    .line 77
    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mbCanceled:Z

    .line 187
    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->showingDialog:Z

    .line 189
    new-instance v0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$6;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mLoadingHandler:Landroid/os/Handler;

    .line 527
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mbCanceled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mbCanceled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/io/File;)Ljava/io/File;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/io/File;)J
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getItemSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mLoadingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getContentsStr()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    .line 467
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 470
    .local v0, strBuf:Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->folderCount:I

    if-ne v1, v3, :cond_46

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    :goto_1a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 475
    iget v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->folderCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 476
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 478
    iget v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->fileCount:I

    if-ne v1, v3, :cond_55

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    :goto_39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 483
    iget v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->fileCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 473
    :cond_46
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 481
    :cond_55
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_39
.end method

.method private getItemSize(Ljava/io/File;)J
    .registers 13
    .parameter "item"

    .prologue
    const-wide/16 v8, 0x0

    .line 438
    const-wide/16 v5, 0x0

    .line 440
    .local v5, size:J
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_b

    .line 463
    :cond_a
    :goto_a
    return-wide v8

    .line 442
    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 443
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    :goto_15
    move-wide v8, v5

    .line 463
    goto :goto_a

    .line 445
    :cond_17
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, list:[Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 449
    const-string v8, "DetailsActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Default value:::size = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] folderCount = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->folderCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] fileCount = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->fileCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_56
    if-ge v1, v2, :cond_9a

    aget-object v4, v0, v1

    .line 451
    .local v4, path:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v7, subItem:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 453
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v5, v8

    .line 454
    iget v8, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->fileCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->fileCount:I

    .line 450
    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 456
    :cond_8e
    invoke-direct {p0, v7}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getItemSize(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v5, v8

    .line 457
    iget v8, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->folderCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->folderCount:I

    goto :goto_8b

    .line 460
    .end local v4           #path:Ljava/lang/String;
    .end local v7           #subItem:Ljava/io/File;
    :cond_9a
    const-string v8, "DetailsActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Calculated value:::size = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] folderCount = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->folderCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] fileCount = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->fileCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/app/myfiles/Util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15
.end method

.method public static getShortSize(J)Ljava/lang/String;
    .registers 10
    .parameter "number"

    .prologue
    const/high16 v7, 0x4480

    .line 418
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.#"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, df:Ljava/text/DecimalFormat;
    long-to-float v1, p0

    .line 423
    .local v1, size:F
    float-to-double v3, v1

    const-wide v5, 0x412999999999999aL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2e

    .line 424
    div-float/2addr v1, v7

    .line 425
    const-string v2, "KB"

    .line 434
    .local v2, unit:Ljava/lang/String;
    :goto_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 426
    .end local v2           #unit:Ljava/lang/String;
    :cond_2e
    float-to-double v3, v1

    const-wide v5, 0x41c999999999999aL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3f

    .line 427
    div-float v3, v1, v7

    div-float v1, v3, v7

    .line 428
    const-string v2, "MB"

    .restart local v2       #unit:Ljava/lang/String;
    goto :goto_17

    .line 430
    .end local v2           #unit:Ljava/lang/String;
    :cond_3f
    div-float v3, v1, v7

    div-float/2addr v3, v7

    div-float v1, v3, v7

    .line 431
    const-string v2, "GB"

    .restart local v2       #unit:Ljava/lang/String;
    goto :goto_17
.end method

.method private init()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 138
    const/4 v1, 0x0

    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/sec/android/app/myfiles/activity/DetailsActivity$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$3;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/myfiles/activity/DetailsActivity$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$4;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 159
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$5;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mThread:Ljava/lang/Thread;

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    return-void
.end method

.method private setBroadcastReceiver()V
    .registers 4

    .prologue
    .line 93
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 97
    new-instance v1, Lcom/sec/android/app/myfiles/activity/DetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$1;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 107
    .local v0, searchManager:Landroid/app/SearchManager;
    new-instance v1, Lcom/sec/android/app/myfiles/activity/DetailsActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$2;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 112
    return-void
.end method


# virtual methods
.method public getSizeFormat(J)Ljava/lang/String;
    .registers 7
    .parameter "size"

    .prologue
    .line 409
    sget-object v2, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 410
    .local v0, nf:Ljava/text/NumberFormat;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getShortSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, strBuf:Ljava/lang/StringBuffer;
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-lez v2, :cond_28

    .line 412
    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " bytes)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const-string v0, "DetailsActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 85
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->setContentView(I)V

    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->init()V

    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->setBroadcastReceiver()V

    .line 90
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 16
    .parameter "id"

    .prologue
    .line 201
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v10, :cond_7

    .line 202
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mDialog:Landroid/app/Dialog;

    .line 405
    :goto_6
    return-object v10

    .line 204
    :cond_7
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;

    if-nez v10, :cond_17

    .line 205
    const-string v10, "DetailsActivity"

    const-string v11, "mFile is null"

    invoke-static {v10, v11}, Lcom/sec/android/app/myfiles/Util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->finish()V

    .line 207
    const/4 v10, 0x0

    goto :goto_6

    .line 211
    :cond_17
    iget-boolean v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->showingDialog:Z

    if-nez v10, :cond_1d

    .line 212
    const/4 v10, 0x0

    goto :goto_6

    .line 215
    :cond_1d
    packed-switch p1, :pswitch_data_2aa

    .line 405
    const/4 v10, 0x0

    goto :goto_6

    .line 218
    :pswitch_22
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    .local v2, detailsDialog:Landroid/app/AlertDialog$Builder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;>;"
    const v10, 0x7f090025

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 223
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09001a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mName:Ljava/lang/String;

    invoke-direct {v10, p0, v11, v12}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09001b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mSize:Ljava/lang/String;

    invoke-direct {v10, p0, v11, v12}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/myfiles/Utils;->isExternalRootFolder(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7d

    .line 228
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090026

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mTime:Ljava/lang/String;

    invoke-direct {v10, p0, v11, v12}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_7d
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_ce

    .line 232
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090032

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getContentsStr()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, p0, v11, v12}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_9c
    :goto_9c
    new-instance v0, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsListAdapter;

    invoke-direct {v0, p0, p0, v1}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsListAdapter;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 383
    .local v0, DetailsListAdapter:Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsListAdapter;
    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090011

    new-instance v12, Lcom/sec/android/app/myfiles/activity/DetailsActivity$8;

    invoke-direct {v12, p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$8;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/sec/android/app/myfiles/activity/DetailsActivity$7;

    invoke-direct {v11, p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$7;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mDialog:Landroid/app/Dialog;

    .line 395
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mDialog:Landroid/app/Dialog;

    new-instance v11, Lcom/sec/android/app/myfiles/activity/DetailsActivity$9;

    invoke-direct {v11, p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$9;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;)V

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 400
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mDialog:Landroid/app/Dialog;

    goto/16 :goto_6

    .line 236
    .end local v0           #DetailsListAdapter:Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsListAdapter;
    :cond_ce
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isOMADrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1cc

    .line 237
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090051

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 238
    .local v9, rightStatus:Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isForwardable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_108

    .line 239
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090067

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v9, v11}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_108
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isValidDrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12b

    .line 243
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090052

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v9, v11}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 247
    :cond_12b
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getRightInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 249
    .local v7, rightInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;>;"
    if-eqz v7, :cond_9c

    .line 250
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_9c

    .line 251
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;

    .line 260
    .local v6, rightInfo:Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;
    iget v10, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->permissionType:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_174

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget v11, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->permissionType:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_174

    .line 262
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09005b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget v13, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->permissionType:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, p0, v11, v12}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_174
    iget-object v10, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    if-eqz v10, :cond_18d

    .line 266
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09001d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    invoke-direct {v10, p0, v11, v12}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_18d
    iget-object v10, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    if-eqz v10, :cond_1c8

    .line 280
    const/4 v4, 0x0

    .local v4, j:I
    :goto_192
    iget-object v10, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_1c8

    .line 281
    iget-object v10, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    aget-object v10, v10, v4

    if-nez v10, :cond_1a0

    .line 280
    :goto_19d
    add-int/lit8 v4, v4, 0x1

    goto :goto_192

    .line 284
    :cond_1a0
    if-nez v4, :cond_1ba

    .line 285
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090053

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    aget-object v12, v12, v4

    invoke-direct {v10, p0, v11, v12}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19d

    .line 287
    :cond_1ba
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    const/4 v11, 0x0

    iget-object v12, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    aget-object v12, v12, v4

    invoke-direct {v10, p0, v11, v12}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19d

    .line 250
    .end local v4           #j:I
    :cond_1c8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_13a

    .line 293
    .end local v3           #i:I
    .end local v6           #rightInfo:Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;
    .end local v7           #rightInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;>;"
    .end local v9           #rightStatus:Ljava/lang/String;
    :cond_1cc
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isPlayReadyFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9c

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090051

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 298
    .restart local v9       #rightStatus:Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->isValidDrmFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_208

    .line 299
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09006e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v9, v11}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 303
    :cond_208
    iget-object v10, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/app/myfiles/drm/DrmUtils;->getPlayReadyRightInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 305
    .restart local v7       #rightInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;>;"
    if-nez v7, :cond_22b

    .line 306
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09006e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v9, v11}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 310
    :cond_22b
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_22c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_9c

    .line 311
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;

    .line 313
    .restart local v6       #rightInfo:Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;
    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 314
    .local v5, rightIndex:Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 315
    .local v8, rightNumBuf:Ljava/lang/StringBuffer;
    const/16 v10, 0x2f

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 316
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 318
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p0, v9, v11}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09001d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->typeStr:Ljava/lang/String;

    invoke-direct {v10, p0, v11, v12}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v10, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    if-eqz v10, :cond_2a6

    .line 325
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_27a
    iget-object v10, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_2a6

    .line 327
    if-nez v4, :cond_298

    .line 328
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090053

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, p0, v11, v12}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :goto_295
    add-int/lit8 v4, v4, 0x1

    goto :goto_27a

    .line 330
    :cond_298
    new-instance v10, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;

    const/4 v11, 0x0

    iget-object v12, v6, Lcom/sec/android/app/myfiles/drm/DrmUtils$DrmRightInfo;->validityStr:[Ljava/lang/String;

    aget-object v12, v12, v4

    invoke-direct {v10, p0, v11, v12}, Lcom/sec/android/app/myfiles/activity/DetailsActivity$DetailsItem;-><init>(Lcom/sec/android/app/myfiles/activity/DetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_295

    .line 310
    .end local v4           #j:I
    :cond_2a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_22c

    .line 215
    nop

    :pswitch_data_2aa
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 125
    const-string v0, "DetailsActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_13

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1c

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/myfiles/activity/DetailsActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 134
    :cond_1c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 119
    const-string v0, "DetailsActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 122
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    return-void
.end method
