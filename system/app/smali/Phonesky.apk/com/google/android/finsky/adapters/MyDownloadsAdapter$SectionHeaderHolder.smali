.class final Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;
.super Ljava/lang/Object;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SectionHeaderHolder"
.end annotation


# instance fields
.field public final bulkActionButton:Landroid/widget/Button;

.field public final countView:Landroid/widget/TextView;

.field public final divider:Landroid/view/View;

.field public final loadingProgress:Landroid/view/View;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "convertView"

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    const v0, 0x7f08013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->titleView:Landroid/widget/TextView;

    .line 809
    const v0, 0x7f080142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->bulkActionButton:Landroid/widget/Button;

    .line 810
    const v0, 0x7f0800de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->loadingProgress:Landroid/view/View;

    .line 811
    const v0, 0x7f080141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->divider:Landroid/view/View;

    .line 812
    const v0, 0x7f080140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionHeaderHolder;->countView:Landroid/widget/TextView;

    .line 814
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 815
    return-void
.end method
