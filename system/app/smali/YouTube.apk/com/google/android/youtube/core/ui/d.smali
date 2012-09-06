.class final Lcom/google/android/youtube/core/ui/d;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/ui/BasePagedView;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/ui/BasePagedView;)V
    .registers 2
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/d;->a:Lcom/google/android/youtube/core/ui/BasePagedView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/ui/BasePagedView;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/d;-><init>(Lcom/google/android/youtube/core/ui/BasePagedView;)V

    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Lcom/google/android/youtube/core/ui/BasePagedView;

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/BasePagedView;->i:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1a

    .line 330
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Lcom/google/android/youtube/core/ui/BasePagedView;

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/BasePagedView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_19

    .line 331
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Lcom/google/android/youtube/core/ui/BasePagedView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->e()V

    .line 336
    :cond_19
    :goto_19
    return-void

    .line 334
    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/d;->a:Lcom/google/android/youtube/core/ui/BasePagedView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->a()V

    goto :goto_19
.end method


# virtual methods
.method public final onChanged()V
    .registers 1

    .prologue
    .line 318
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 319
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/d;->a()V

    .line 320
    return-void
.end method

.method public final onInvalidated()V
    .registers 1

    .prologue
    .line 324
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 325
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/d;->a()V

    .line 326
    return-void
.end method
