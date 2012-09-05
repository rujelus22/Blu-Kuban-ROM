.class public Lcom/sprint/dsa/MicroSdUsageActivity;
.super Landroid/app/ListActivity;
.source "MicroSdUsageActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field private mListAdapter:Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x3

    .line 28
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/MicroSdUsageActivity;->requestWindowFeature(I)Z

    .line 33
    invoke-virtual {p0, v1}, Lcom/sprint/dsa/MicroSdUsageActivity;->requestWindowFeature(I)Z

    .line 35
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/MicroSdUsageActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f020014

    invoke-virtual {p0, v1, v0}, Lcom/sprint/dsa/MicroSdUsageActivity;->setFeatureDrawableResource(II)V

    .line 38
    new-instance v0, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sprint/dsa/MicroSdUsageActivity;->mListAdapter:Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;

    .line 39
    iget-object v0, p0, Lcom/sprint/dsa/MicroSdUsageActivity;->mListAdapter:Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/MicroSdUsageActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 41
    invoke-virtual {p0}, Lcom/sprint/dsa/MicroSdUsageActivity;->refresh()V

    .line 42
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 58
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 50
    invoke-virtual {p0}, Lcom/sprint/dsa/MicroSdUsageActivity;->refresh()V

    .line 51
    return-void
.end method

.method public refresh()V
    .registers 12

    .prologue
    .line 64
    new-instance v1, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;-><init>(Landroid/content/Context;)V

    .line 65
    .local v1, diag:Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;
    invoke-virtual {v1}, Lcom/sprint/dsa/diagnostics/SdCardDiagnostic;->getTestData()Lcom/sprint/dsa/diagnostics/DiagnosticsData;

    move-result-object v0

    .line 67
    .local v0, data:Lcom/sprint/dsa/diagnostics/DiagnosticsData;
    const v7, 0x102000d

    invoke-virtual {p0, v7}, Lcom/sprint/dsa/MicroSdUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 68
    .local v3, progress:Landroid/widget/ProgressBar;
    const/16 v7, 0x64

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 70
    const v7, 0x7f0b0007

    invoke-virtual {p0, v7}, Lcom/sprint/dsa/MicroSdUsageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 71
    .local v5, txtUsage:Landroid/widget/TextView;
    iget-wide v7, v0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardTotalSpace:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_70

    .line 72
    iget-wide v7, v0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardTotalSpace:J

    invoke-static {p0, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, totalSize:Ljava/lang/String;
    iget-wide v7, v0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardUsedSpace:J

    invoke-static {p0, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, usedSize:Ljava/lang/String;
    iget-wide v7, v0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardUsedSpace:J

    long-to-double v7, v7

    iget-wide v9, v0, Lcom/sprint/dsa/diagnostics/DiagnosticsData;->sdcardTotalSpace:J

    long-to-double v9, v9

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4059

    mul-double/2addr v7, v9

    double-to-int v2, v7

    .line 76
    .local v2, percentage:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " %)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 84
    .end local v2           #percentage:I
    .end local v4           #totalSize:Ljava/lang/String;
    .end local v6           #usedSize:Ljava/lang/String;
    :goto_6c
    invoke-virtual {p0}, Lcom/sprint/dsa/MicroSdUsageActivity;->updateFileStats()V

    .line 85
    return-void

    .line 80
    :cond_70
    const-string v7, "(no card)"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_6c
.end method

.method public updateFileStats()V
    .registers 4

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, root:Ljava/io/File;
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/FileTypeStats;->get(Ljava/io/File;)Lcom/sprint/dsa/diagnostics/FileTypeStats;

    move-result-object v1

    .line 91
    .local v1, stats:Lcom/sprint/dsa/diagnostics/FileTypeStats;
    iget-object v2, p0, Lcom/sprint/dsa/MicroSdUsageActivity;->mListAdapter:Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;

    invoke-virtual {v2, v1}, Lcom/sprint/dsa/diagnostics/FileStorageListAdapter;->refresh(Lcom/sprint/dsa/diagnostics/FileTypeStats;)V

    .line 98
    return-void
.end method
