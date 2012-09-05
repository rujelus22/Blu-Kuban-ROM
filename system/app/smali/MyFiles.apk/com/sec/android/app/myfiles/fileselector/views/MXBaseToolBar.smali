.class public Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;
.super Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;
.source "MXBaseToolBar.java"


# instance fields
.field private isEnableUpButton:Z

.field private mHomeButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

.field private mUpButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

.field private mViewModeButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->initViews(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->initViews(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->initViews(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->isEnableUpButton:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;)Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->mUpButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    return-object v0
.end method

.method private initViews(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const v4, 0x7f0c0037

    .line 44
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    .local v0, li:Landroid/view/LayoutInflater;
    const v1, 0x7f03001c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    const v1, 0x7f0c002d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->mHomeButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    .line 49
    const v1, 0x7f0c002e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->mUpButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    .line 53
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->mHomeButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    const v2, 0x7f0200c5

    const v3, 0x7f09000c

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setImageAndText(II)V

    .line 54
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->mUpButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    const v2, 0x7f0200ca

    const v3, 0x7f09000d

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setImageAndText(II)V

    .line 58
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->mUpButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->setUpButton(Landroid/view/View;)V

    .line 59
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->mHomeButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->setHomeButton(Landroid/view/View;)V

    .line 61
    return-void
.end method


# virtual methods
.method public rotate()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->mHomeButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->resizeButton()V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->mUpButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->resizeButton()V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->mViewModeButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->resizeButton()V

    .line 87
    return-void
.end method

.method public setUpButtonEnabled(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->isEnableUpButton:Z

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->mUpButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    if-eqz v0, :cond_12

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    :cond_12
    return-void
.end method
