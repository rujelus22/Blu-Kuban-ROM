.class public Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;
.super Lcom/google/android/youtube/core/ui/PagedListView;
.source "SourceFile"


# instance fields
.field private o:Z

.field private p:Z

.field private q:Landroid/view/View;


# direct methods
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

.method private k()V
    .registers 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->p:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->o:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->q:Landroid/view/View;

    if-nez v0, :cond_f

    .line 68
    :cond_c
    invoke-super {p0}, Lcom/google/android/youtube/core/ui/PagedListView;->b()V

    .line 70
    :cond_f
    return-void
.end method

.method private l()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    .line 74
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_f

    .line 75
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 77
    :cond_f
    return-void
.end method

.method private m()V
    .registers 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    .line 81
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 82
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 84
    :cond_10
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->o:Z

    .line 44
    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->p:Z

    .line 45
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->m()V

    .line 46
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->q:Landroid/view/View;

    .line 39
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->l()V

    .line 40
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->p:Z

    .line 51
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->k()V

    .line 52
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->l()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->o:Z

    .line 57
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->k()V

    .line 58
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->m()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->o:Z

    .line 63
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/ui/LiveTeaserVideosPagedListView;->k()V

    .line 64
    return-void
.end method
