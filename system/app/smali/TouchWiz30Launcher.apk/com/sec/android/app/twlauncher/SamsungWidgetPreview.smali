.class public Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;
.super Landroid/widget/LinearLayout;
.source "SamsungWidgetPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$OnSamsungWidgetPreviewSelectListener;
    }
.end annotation


# instance fields
.field private USE_APPWIDGET_METADATA:Z

.field private mAppWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mId:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSamsungWidgetPreviewSelectListener:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$OnSamsungWidgetPreviewSelectListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreview:Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

.field private mPreviewMode:I

.field private mPreviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->USE_APPWIDGET_METADATA:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mId:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreviews:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mAppWidgetList:Ljava/util/List;

    .line 84
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->init(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$OnSamsungWidgetPreviewSelectListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mOnSamsungWidgetPreviewSelectListener:Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$OnSamsungWidgetPreviewSelectListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreviewMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mId:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mAppWidgetList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    .line 92
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->setOrientation(I)V

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 96
    .local v1, li:Landroid/view/LayoutInflater;
    const v5, 0x7f03001a

    invoke-virtual {v1, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 99
    .local v2, preview:Landroid/view/ViewGroup;
    const v5, 0x7f06004e

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mTitle:Landroid/widget/TextView;

    .line 102
    const v5, 0x7f060050

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    .line 104
    const v5, 0x7f060051

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 105
    .local v4, select:Landroid/widget/Button;
    if-eqz v4, :cond_42

    .line 106
    new-instance v5, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$1;-><init>(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_42
    const v5, 0x7f06004d

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 125
    .local v0, left:Landroid/widget/Button;
    if-eqz v0, :cond_55

    .line 126
    new-instance v5, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$2;-><init>(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_55
    const v5, 0x7f06004f

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 139
    .local v3, right:Landroid/widget/Button;
    if-eqz v3, :cond_68

    .line 140
    new-instance v5, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview$3;-><init>(Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_68
    return-void
.end method

.method private updatePageTitle()V
    .registers 5

    .prologue
    .line 339
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreview:Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getCurrentScreen()I

    move-result v0

    .line 340
    .local v0, currentScreen:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 341
    .local v1, pm:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_20

    .line 342
    iget v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreviewMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    .line 345
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_20
    :goto_20
    return-void

    .line 353
    :cond_21
    iget v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mPreviewMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 356
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->mAppWidgetList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreview;->updatePageTitle()V

    .line 370
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 371
    return-void
.end method
