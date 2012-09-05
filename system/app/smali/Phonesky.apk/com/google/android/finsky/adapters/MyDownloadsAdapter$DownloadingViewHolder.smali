.class final Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;
.super Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadingViewHolder"
.end annotation


# instance fields
.field public final downloadingBytes:Landroid/widget/TextView;

.field public final downloadingPercentage:Landroid/widget/TextView;

.field public final progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "convertView"

    .prologue
    .line 790
    invoke-direct {p0, p1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 791
    const v0, 0x7f0800c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;->downloadingBytes:Landroid/widget/TextView;

    .line 792
    const v0, 0x7f0800c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;->downloadingPercentage:Landroid/widget/TextView;

    .line 794
    const v0, 0x7f0800c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$DownloadingViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 796
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 797
    return-void
.end method
