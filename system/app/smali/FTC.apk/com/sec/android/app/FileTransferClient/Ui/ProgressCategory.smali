.class public Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;
.super Landroid/preference/PreferenceCategory;
.source "ProgressCategory.java"


# instance fields
.field private mProgress:Z

.field progressBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->mProgress:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->progressBar:Landroid/view/View;

    .line 34
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->setLayoutResource(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 44
    const/high16 v2, 0x7f07

    :try_start_5
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->progressBar:Landroid/view/View;

    .line 46
    iget-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->mProgress:Z

    if-eqz v2, :cond_16

    const/4 v1, 0x0

    .line 47
    .local v1, visibility:I
    :goto_10
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->progressBar:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_18

    .line 53
    .end local v1           #visibility:I
    :goto_15
    return-void

    .line 46
    :cond_16
    const/4 v1, 0x4

    goto :goto_10

    .line 49
    :catch_18
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public setProgress(Z)V
    .registers 4
    .parameter "progressOn"

    .prologue
    .line 63
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->mProgress:Z

    if-eq v1, p1, :cond_10

    .line 65
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->mProgress:Z

    .line 66
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->mProgress:Z

    if-eqz v1, :cond_11

    const/4 v0, 0x0

    .line 67
    .local v0, visibility:I
    :goto_b
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->progressBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .end local v0           #visibility:I
    :cond_10
    return-void

    .line 66
    :cond_11
    const/4 v0, 0x4

    goto :goto_b
.end method
