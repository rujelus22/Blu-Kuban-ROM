.class public Lcom/google/android/finsky/adapters/DownloadProgressHelper;
.super Ljava/lang/Object;
.source "DownloadProgressHelper.java"


# static fields
.field private static sDownloadStatusFormatBytes:Ljava/lang/CharSequence;

.field private static sDownloadStatusFormatPercents:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureDownloadProgressUi(Landroid/content/Context;Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/download/Download;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .registers 20
    .parameter "ctx"
    .parameter "localAsset"
    .parameter "download"
    .parameter "downloadingBytes"
    .parameter "downloadingPercentage"
    .parameter "progressBar"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->initializeStrings(Landroid/content/Context;)V

    .line 47
    const-string v10, " "

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const-string v10, " "

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v10

    sget-object v11, Lcom/google/android/finsky/local/AssetState;->INSTALLING:Lcom/google/android/finsky/local/AssetState;

    if-ne v10, v11, :cond_20

    .line 50
    const/4 v10, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 104
    :goto_1f
    return-void

    .line 54
    :cond_20
    if-nez p2, :cond_29

    .line 55
    const/4 v10, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1f

    .line 64
    :cond_29
    const v10, 0x7f070167

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(I)V

    .line 67
    invoke-interface/range {p2 .. p2}, Lcom/google/android/finsky/download/Download;->getBytesCompleted()J

    move-result-wide v1

    .line 68
    .local v1, bytesCompleted:J
    invoke-interface/range {p2 .. p2}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v10

    iget-wide v3, v10, Lcom/google/android/finsky/download/Download$PackageProperties;->size:J

    .line 72
    .local v3, bytesTotal:J
    invoke-interface/range {p2 .. p2}, Lcom/google/android/finsky/download/Download;->getPackageProperties()Lcom/google/android/finsky/download/Download$PackageProperties;

    move-result-object v9

    .line 73
    .local v9, properties:Lcom/google/android/finsky/download/Download$PackageProperties;
    iget-object v10, v9, Lcom/google/android/finsky/download/Download$PackageProperties;->mainObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v10, :cond_51

    .line 74
    iget-object v10, v9, Lcom/google/android/finsky/download/Download$PackageProperties;->mainObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-static {v10}, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->getObbCompleted(Lcom/google/android/finsky/download/obb/Obb;)J

    move-result-wide v10

    add-long/2addr v1, v10

    .line 75
    iget-object v10, v9, Lcom/google/android/finsky/download/Download$PackageProperties;->mainObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v10}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v10

    add-long/2addr v3, v10

    .line 77
    :cond_51
    iget-object v10, v9, Lcom/google/android/finsky/download/Download$PackageProperties;->patchObb:Lcom/google/android/finsky/download/obb/Obb;

    if-eqz v10, :cond_63

    .line 78
    iget-object v10, v9, Lcom/google/android/finsky/download/Download$PackageProperties;->patchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-static {v10}, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->getObbCompleted(Lcom/google/android/finsky/download/obb/Obb;)J

    move-result-wide v10

    add-long/2addr v1, v10

    .line 79
    iget-object v10, v9, Lcom/google/android/finsky/download/Download$PackageProperties;->patchObb:Lcom/google/android/finsky/download/obb/Obb;

    invoke-interface {v10}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v10

    add-long/2addr v3, v10

    .line 83
    :cond_63
    const-wide/16 v10, 0x0

    cmp-long v10, v1, v10

    if-lez v10, :cond_7d

    const-wide/16 v10, 0x0

    cmp-long v10, v3, v10

    if-lez v10, :cond_7d

    cmp-long v10, v1, v3

    if-gtz v10, :cond_7d

    const/4 v5, 0x1

    .line 85
    .local v5, bytesValid:Z
    :goto_74
    if-nez v5, :cond_7f

    .line 86
    const/4 v10, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1f

    .line 83
    .end local v5           #bytesValid:Z
    :cond_7d
    const/4 v5, 0x0

    goto :goto_74

    .line 91
    .restart local v5       #bytesValid:Z
    :cond_7f
    const/4 v6, 0x0

    .line 92
    .local v6, percent:I
    const-wide/16 v10, 0x64

    mul-long/2addr v10, v1

    div-long/2addr v10, v3

    long-to-int v6, v10

    .line 93
    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 94
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 97
    sget-object v10, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->sDownloadStatusFormatPercents:Ljava/lang/CharSequence;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/CharSequence;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 99
    .local v8, progressStringPercents:Ljava/lang/CharSequence;
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    sget-object v10, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->sDownloadStatusFormatBytes:Ljava/lang/CharSequence;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/CharSequence;

    const/4 v12, 0x0

    invoke-static {p0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 103
    .local v7, progressStringBytes:Ljava/lang/CharSequence;
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1f
.end method

.method private static getObbCompleted(Lcom/google/android/finsky/download/obb/Obb;)J
    .registers 7
    .parameter "obb"

    .prologue
    .line 115
    const-wide/16 v2, 0x0

    .line 116
    .local v2, result:J
    invoke-interface {p0}, Lcom/google/android/finsky/download/obb/Obb;->getState()Lcom/google/android/finsky/download/obb/ObbState;

    move-result-object v4

    .line 117
    .local v4, state:Lcom/google/android/finsky/download/obb/ObbState;
    sget-object v5, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOADING:Lcom/google/android/finsky/download/obb/ObbState;

    if-ne v4, v5, :cond_21

    .line 118
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getDownloadQueue()Lcom/google/android/finsky/download/DownloadQueue;

    move-result-object v0

    .line 119
    .local v0, downloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    invoke-interface {p0}, Lcom/google/android/finsky/download/obb/Obb;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/google/android/finsky/download/DownloadQueue;->getDownloadByUrl(Ljava/lang/String;)Lcom/google/android/finsky/download/Download;

    move-result-object v1

    .line 120
    .local v1, obbDownload:Lcom/google/android/finsky/download/Download;
    if-eqz v1, :cond_20

    .line 121
    invoke-interface {v1}, Lcom/google/android/finsky/download/Download;->getBytesCompleted()J

    move-result-wide v2

    .line 127
    .end local v0           #downloadQueue:Lcom/google/android/finsky/download/DownloadQueue;
    .end local v1           #obbDownload:Lcom/google/android/finsky/download/Download;
    :cond_20
    :goto_20
    return-wide v2

    .line 123
    :cond_21
    sget-object v5, Lcom/google/android/finsky/download/obb/ObbState;->DOWNLOADED:Lcom/google/android/finsky/download/obb/ObbState;

    if-ne v4, v5, :cond_20

    .line 124
    invoke-interface {p0}, Lcom/google/android/finsky/download/obb/Obb;->getSize()J

    move-result-wide v2

    goto :goto_20
.end method

.method private static initializeStrings(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->sDownloadStatusFormatPercents:Ljava/lang/CharSequence;

    if-nez v0, :cond_11

    .line 33
    const v0, 0x7f07015d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->sDownloadStatusFormatPercents:Ljava/lang/CharSequence;

    .line 36
    :cond_11
    sget-object v0, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->sDownloadStatusFormatBytes:Ljava/lang/CharSequence;

    if-nez v0, :cond_22

    .line 37
    const v0, 0x7f07015e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/adapters/DownloadProgressHelper;->sDownloadStatusFormatBytes:Ljava/lang/CharSequence;

    .line 40
    :cond_22
    return-void
.end method
