.class public final Lcom/google/android/apps/reader/fragment/ListDecorator;
.super Lcom/google/android/feeds/ContentDecorator;
.source "ListDecorator.java"


# instance fields
.field private final mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "adapter"
    .parameter "listener"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/feeds/ContentDecorator;-><init>(Landroid/widget/ListAdapter;)V

    .line 49
    iput-object p2, p0, Lcom/google/android/apps/reader/fragment/ListDecorator;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 50
    return-void
.end method


# virtual methods
.method protected newErrorView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 59
    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/reader/fragment/ListDecorator;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-object v0
.end method

.method protected newLoadingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 54
    const v0, 0x7f030021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
