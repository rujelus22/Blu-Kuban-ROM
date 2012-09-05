.class final Lcom/google/android/youtube/core/ui/e;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/ui/d;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/core/ui/d;)V
    .registers 3
    .parameter

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/ui/e;-><init>(Lcom/google/android/youtube/core/ui/d;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/core/ui/d;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/e;->a:Lcom/google/android/youtube/core/ui/d;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/e;->a:Lcom/google/android/youtube/core/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/d;->i:Lcom/google/android/youtube/core/a/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/a/a;->getCount()I

    move-result v0

    if-nez v0, :cond_1a

    .line 257
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/e;->a:Lcom/google/android/youtube/core/ui/d;

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/d;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_19

    .line 258
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/e;->a:Lcom/google/android/youtube/core/ui/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/d;->g()V

    .line 263
    :cond_19
    :goto_19
    return-void

    .line 261
    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/e;->a:Lcom/google/android/youtube/core/ui/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/d;->b()V

    goto :goto_19
.end method


# virtual methods
.method public final onChanged()V
    .registers 1

    .prologue
    .line 245
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 246
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/e;->a()V

    .line 247
    return-void
.end method

.method public final onInvalidated()V
    .registers 1

    .prologue
    .line 251
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 252
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/e;->a()V

    .line 253
    return-void
.end method
