.class public Lcom/google/googlenav/ui/android/GmmListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    .line 23
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    .line 29
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    .line 33
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GmmListView;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    .line 23
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    .line 29
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    .line 38
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GmmListView;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    .line 23
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    .line 29
    iput-boolean v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    .line 43
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/GmmListView;->a()V

    .line 44
    return-void
.end method

.method private a()V
    .registers 1

    .prologue
    .line 47
    invoke-virtual {p0, p0}, Lcom/google/googlenav/ui/android/GmmListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    if-nez p2, :cond_13

    const/4 v0, 0x1

    :goto_6
    :try_start_6
    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    .line 72
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    if-eqz v0, :cond_11

    .line 73
    iget-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 75
    :cond_11
    monitor-exit v1

    .line 76
    return-void

    .line 71
    :cond_13
    const/4 v0, 0x0

    goto :goto_6

    .line 75
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowFocusChanged(Z)V

    .line 54
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    if-eqz v0, :cond_a

    if-nez p1, :cond_a

    .line 66
    :goto_9
    return-void

    .line 60
    :cond_a
    iget-object v1, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_d
    iput-boolean p1, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    .line 62
    iget-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->b:Z

    if-eqz v0, :cond_18

    .line 63
    iget-object v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 65
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
    .parameter
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/GmmListView;->c:Z

    .line 101
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 102
    return-void
.end method
