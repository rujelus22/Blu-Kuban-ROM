.class public Lcom/sec/android/app/myfiles/fileselector/views/MXUpToolBar;
.super Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;
.source "MXUpToolBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXUpToolBar;->initViews(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXUpToolBar;->initViews(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXUpToolBar;->initViews(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 40
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 43
    .local v0, li:Landroid/view/LayoutInflater;
    const v1, 0x7f030023

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 45
    const v1, 0x7f0c002e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXUpToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXUpToolBar;->setUpButton(Landroid/view/View;)V

    .line 47
    return-void
.end method


# virtual methods
.method public rotate()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method
