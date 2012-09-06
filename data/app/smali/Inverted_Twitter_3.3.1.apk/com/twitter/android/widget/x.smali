.class final Lcom/twitter/android/widget/x;
.super Landroid/database/DataSetObserver;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/TapRefreshableListView;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/twitter/android/widget/TapRefreshableListView;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/widget/x;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/x;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onChanged()V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/x;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TapRefreshableListView;->d()V

    iget-object v0, p0, Lcom/twitter/android/widget/x;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TapRefreshableListView;->requestLayout()V

    iget-object v2, p0, Lcom/twitter/android/widget/x;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_d
    iget-object v0, p0, Lcom/twitter/android/widget/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_16
    if-ltz v1, :cond_27

    iget-object v0, p0, Lcom/twitter/android/widget/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_16

    :cond_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final onInvalidated()V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/x;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/twitter/android/widget/TapRefreshableListView;->e:I

    iget-object v0, p0, Lcom/twitter/android/widget/x;->a:Lcom/twitter/android/widget/TapRefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TapRefreshableListView;->requestLayout()V

    iget-object v2, p0, Lcom/twitter/android/widget/x;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_d
    iget-object v0, p0, Lcom/twitter/android/widget/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_16
    if-ltz v1, :cond_27

    iget-object v0, p0, Lcom/twitter/android/widget/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_16

    :cond_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    monitor-exit v2

    throw v0
.end method
