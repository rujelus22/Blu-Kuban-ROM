.class public Lcom/google/googlenav/ui/android/GmmListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GmmListView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GmmListView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GmmListView;->a()V

    return-void
.end method

.method private a()V
    .registers 1

    invoke-virtual {p0, p0}, Lcom/google/googlenav/ui/android/GmmListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5

    iget-object v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    monitor-enter v1

    if-nez p2, :cond_13

    const/4 v0, 0x1

    :goto_6
    :try_start_6
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_11
    monitor-exit v1

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_6

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public onTouchModeChanged(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    :goto_d
    return-void

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchModeChanged(Z)V

    goto :goto_d
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_18
    monitor-exit v1

    goto :goto_9

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public setSelectionFromTop(II)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method
