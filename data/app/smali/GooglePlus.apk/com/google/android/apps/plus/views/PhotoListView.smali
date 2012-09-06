.class public Lcom/google/android/apps/plus/views/PhotoListView;
.super Landroid/widget/ListView;
.source "PhotoListView.java"


# instance fields
.field private mScrollingDisabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method private getPhotoHeaderView()Lcom/google/android/apps/plus/views/PhotoHeaderView;
    .registers 4

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoListView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Landroid/util/SparseArray;

    if-nez v2, :cond_a

    .line 58
    const/4 v2, 0x0

    .line 61
    :goto_9
    return-object v2

    :cond_a
    move-object v0, v1

    .line 60
    check-cast v0, Landroid/util/SparseArray;

    .line 61
    .local v0, listTags:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/Object;>;"
    const v2, 0x7f090035

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    goto :goto_9
.end method


# virtual methods
.method public disableScrolling(Z)V
    .registers 3
    .parameter "disabled"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoListView;->mScrollingDisabled:Z

    if-eq p1, v0, :cond_c

    .line 49
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/PhotoListView;->mScrollingDisabled:Z

    .line 50
    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PhotoListView;->setVerticalScrollBarEnabled(Z)V

    .line 52
    :cond_c
    return-void

    .line 50
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoListView;->getPhotoHeaderView()Lcom/google/android/apps/plus/views/PhotoHeaderView;

    move-result-object v0

    .line 38
    .local v0, photo:Lcom/google/android/apps/plus/views/PhotoHeaderView;
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/PhotoListView;->mScrollingDisabled:Z

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 39
    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 41
    :goto_e
    return v1

    :cond_f
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_e
.end method
