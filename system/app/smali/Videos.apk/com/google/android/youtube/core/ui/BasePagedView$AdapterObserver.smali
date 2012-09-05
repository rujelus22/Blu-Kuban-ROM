.class Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;
.super Landroid/database/DataSetObserver;
.source "BasePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/ui/BasePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/ui/BasePagedView;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/ui/BasePagedView;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;->this$0:Lcom/google/android/youtube/core/ui/BasePagedView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/core/ui/BasePagedView;Lcom/google/android/youtube/core/ui/BasePagedView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;-><init>(Lcom/google/android/youtube/core/ui/BasePagedView;)V

    return-void
.end method

.method private maybeChangeView()V
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;->this$0:Lcom/google/android/youtube/core/ui/BasePagedView;

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/BasePagedView;->adapter:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 248
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;->this$0:Lcom/google/android/youtube/core/ui/BasePagedView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->showEmpty()V

    .line 252
    :goto_f
    return-void

    .line 250
    :cond_10
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;->this$0:Lcom/google/android/youtube/core/ui/BasePagedView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/BasePagedView;->showItems()V

    goto :goto_f
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 237
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;->maybeChangeView()V

    .line 238
    return-void
.end method

.method public onInvalidated()V
    .registers 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 243
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/BasePagedView$AdapterObserver;->maybeChangeView()V

    .line 244
    return-void
.end method
