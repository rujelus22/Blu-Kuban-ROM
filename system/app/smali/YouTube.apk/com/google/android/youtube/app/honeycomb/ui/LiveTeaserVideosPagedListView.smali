.class public Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;
.super Lcom/google/android/youtube/core/ui/PagedListView;
.source "SourceFile"


# instance fields
.field private o:Z

.field private p:Z

.field private q:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/PagedListView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/ui/PagedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->p:Z

    .line 51
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->p:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->o:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->q:Landroid/view/View;

    if-nez v0, :cond_12

    :cond_f
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/PagedListView;->a()V

    .line 52
    :cond_12
    return-void
.end method

.method public setLiveTeaserView(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->q:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 40
    :cond_11
    return-void
.end method
