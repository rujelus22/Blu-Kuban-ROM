.class public Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;
.super Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;
.source "MXBaseSoftKey.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->initViews()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->initViews()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->initViews()V

    .line 38
    return-void
.end method

.method private initViews()V
    .registers 4

    .prologue
    .line 42
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 45
    .local v0, li:Landroid/view/LayoutInflater;
    const v1, 0x7f03001b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    const v1, 0x7f0c002a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;->mLeftButton:Landroid/widget/Button;

    .line 49
    const v1, 0x7f0c002b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;->mRightButton:Landroid/widget/Button;

    .line 51
    return-void
.end method


# virtual methods
.method public requestFocusLeftButton()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 72
    return-void
.end method

.method public setLeftKeyEnable(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 59
    return-void
.end method
