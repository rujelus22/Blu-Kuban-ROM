.class public Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;
.super Landroid/widget/RelativeLayout;
.source "MXEmptyView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmptyImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;->mContext:Landroid/content/Context;

    .line 38
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;->initViews()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;->mContext:Landroid/content/Context;

    .line 55
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;->initViews()V

    .line 59
    return-void
.end method

.method private initViews()V
    .registers 2

    .prologue
    .line 63
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;->mEmptyImage:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;->setEmptyImage(I)V

    .line 66
    return-void
.end method


# virtual methods
.method protected setEmptyImage(I)V
    .registers 4
    .parameter "orientation"

    .prologue
    .line 69
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;->mEmptyImage:Landroid/widget/ImageView;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 73
    :goto_b
    return-void

    .line 72
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;->mEmptyImage:Landroid/widget/ImageView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_b
.end method
