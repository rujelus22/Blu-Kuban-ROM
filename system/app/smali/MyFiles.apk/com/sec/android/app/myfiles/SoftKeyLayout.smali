.class public Lcom/sec/android/app/myfiles/SoftKeyLayout;
.super Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;
.source "SoftKeyLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/SoftKeyLayout;->initViews()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/SoftKeyLayout;->initViews()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/SoftKeyLayout;->initViews()V

    .line 27
    return-void
.end method

.method private initViews()V
    .registers 4

    .prologue
    .line 30
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 32
    .local v0, li:Landroid/view/LayoutInflater;
    const v1, 0x7f03002f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    const v1, 0x7f0c0045

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/SoftKeyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;->mLeftButton:Landroid/widget/Button;

    .line 35
    const v1, 0x7f0c0046

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/SoftKeyLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;->mRightButton:Landroid/widget/Button;

    .line 36
    return-void
.end method
