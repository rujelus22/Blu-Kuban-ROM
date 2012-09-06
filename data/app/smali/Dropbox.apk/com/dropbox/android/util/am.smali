.class public final Lcom/dropbox/android/util/am;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/util/am;->a:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/dropbox/android/util/al;
    .registers 3
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dropbox/android/util/am;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/al;

    return-object v0
.end method

.method public final a(Lcom/dropbox/android/util/al;)Lcom/dropbox/android/util/al;
    .registers 3
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/android/util/am;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/al;

    return-object v0
.end method

.method public final declared-synchronized a(Landroid/widget/ListView;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/dropbox/android/util/am;->a()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 46
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 47
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 48
    if-nez v2, :cond_1d

    .line 50
    :goto_13
    invoke-virtual {p0}, Lcom/dropbox/android/util/am;->b()Lcom/dropbox/android/util/al;

    move-result-object v2

    .line 51
    iput v1, v2, Lcom/dropbox/android/util/al;->b:I

    .line 52
    iput v0, v2, Lcom/dropbox/android/util/al;->c:I
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_22

    .line 54
    :cond_1b
    monitor-exit p0

    return-void

    .line 48
    :cond_1d
    :try_start_1d
    invoke-virtual {v2}, Landroid/view/View;->getTop()I
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_22

    move-result v0

    goto :goto_13

    .line 45
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dropbox/android/util/am;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/dropbox/android/util/al;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dropbox/android/util/am;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/al;

    return-object v0
.end method

.method public final c()Lcom/dropbox/android/util/al;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dropbox/android/util/am;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/al;

    return-object v0
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dropbox/android/util/am;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method
