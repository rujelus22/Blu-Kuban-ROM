.class Lcom/android/providers/downloads/ui/saveas/MXBaseSoftKey;
.super Lcom/android/providers/downloads/ui/saveas/MXSoftKey;
.source "SecDownloadSaveasUi.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 850
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/saveas/MXSoftKey;-><init>(Landroid/content/Context;)V

    .line 852
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/saveas/MXBaseSoftKey;->initViews()V

    .line 854
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 858
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/saveas/MXSoftKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 860
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/saveas/MXBaseSoftKey;->initViews()V

    .line 862
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 866
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/ui/saveas/MXSoftKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 868
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/saveas/MXBaseSoftKey;->initViews()V

    .line 870
    return-void
.end method

.method private initViews()V
    .registers 4

    .prologue
    .line 874
    iget-object v1, p0, Lcom/android/providers/downloads/ui/saveas/MXSoftKey;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 877
    .local v0, li:Landroid/view/LayoutInflater;
    const v1, 0x7f040008

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 879
    const v1, 0x7f0b002d

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/saveas/MXBaseSoftKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/providers/downloads/ui/saveas/MXSoftKey;->mLeftButton:Landroid/widget/Button;

    .line 881
    const v1, 0x7f0b002e

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/saveas/MXBaseSoftKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/providers/downloads/ui/saveas/MXSoftKey;->mRightButton:Landroid/widget/Button;

    .line 883
    return-void
.end method
